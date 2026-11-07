.class public final Landroid/service/autofill/DateValueSanitizer;
.super Landroid/service/autofill/InternalSanitizer;
.source "DateValueSanitizer.java"

# interfaces
.implements Landroid/service/autofill/Sanitizer;
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/DateValueSanitizer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DateValueSanitizer"


# instance fields
.field private final greylist-max-o mDateFormat:Landroid/icu/text/DateFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 110
    new-instance v0, Landroid/service/autofill/DateValueSanitizer$1;

    invoke-direct {v0}, Landroid/service/autofill/DateValueSanitizer$1;-><init>()V

    sput-object v0, Landroid/service/autofill/DateValueSanitizer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/icu/text/DateFormat;)V
    .registers 3
    .param p1, "dateFormat"    # Landroid/icu/text/DateFormat;

    .line 53
    invoke-direct {p0}, Landroid/service/autofill/InternalSanitizer;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat;

    iput-object v0, p0, Landroid/service/autofill/DateValueSanitizer;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 55
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sanitize(Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;
    .registers 10
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 62
    const-string v0, " to "

    const/4 v1, 0x0

    const-string v2, "DateValueSanitizer"

    if-nez p1, :cond_e

    .line 63
    const-string/jumbo v0, "sanitize() called with null value"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-object v1

    .line 66
    :cond_e
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 67
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is not a date"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2e
    return-object v1

    .line 72
    :cond_2f
    :try_start_2f
    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 75
    .local v3, "date":Ljava/util/Date;
    iget-object v4, p0, Landroid/service/autofill/DateValueSanitizer;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {v4, v3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "converted":Ljava/lang/String;
    sget-boolean v5, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_60

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transformed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_60
    iget-object v5, p0, Landroid/service/autofill/DateValueSanitizer;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {v5, v4}, Landroid/icu/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 79
    .local v5, "sanitized":Ljava/util/Date;
    sget-boolean v6, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_80

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sanitized to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_80
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroid/view/autofill/AutofillValue;->forDate(J)Landroid/view/autofill/AutofillValue;

    move-result-object v0
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_88} :catch_89

    return-object v0

    .line 81
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "converted":Ljava/lang/String;
    .end local v5    # "sanitized":Ljava/util/Date;
    :catch_89
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not apply "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/autofill/DateValueSanitizer;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 92
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateValueSanitizer: [dateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/DateValueSanitizer;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 107
    iget-object v0, p0, Landroid/service/autofill/DateValueSanitizer;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 108
    return-void
.end method
