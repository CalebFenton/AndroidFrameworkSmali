.class public final Landroid/service/autofill/DateTransformation;
.super Landroid/service/autofill/InternalTransformation;
.source "DateTransformation.java"

# interfaces
.implements Landroid/service/autofill/Transformation;
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/DateTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DateTransformation"


# instance fields
.field private final greylist-max-o mDateFormat:Landroid/icu/text/DateFormat;

.field private final greylist-max-o mFieldId:Landroid/view/autofill/AutofillId;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/service/autofill/DateTransformation$1;

    invoke-direct {v0}, Landroid/service/autofill/DateTransformation$1;-><init>()V

    sput-object v0, Landroid/service/autofill/DateTransformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/autofill/AutofillId;Landroid/icu/text/DateFormat;)V
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "dateFormat"    # Landroid/icu/text/DateFormat;

    .line 58
    invoke-direct {p0}, Landroid/service/autofill/InternalTransformation;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/DateTransformation;->mFieldId:Landroid/view/autofill/AutofillId;

    .line 60
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormat;

    iput-object v0, p0, Landroid/service/autofill/DateTransformation;->mDateFormat:Landroid/icu/text/DateFormat;

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;I)V
    .registers 11
    .param p1, "finder"    # Landroid/service/autofill/ValueFinder;
    .param p2, "parentTemplate"    # Landroid/widget/RemoteViews;
    .param p3, "childViewId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    const-string v0, " to "

    iget-object v1, p0, Landroid/service/autofill/DateTransformation;->mFieldId:Landroid/view/autofill/AutofillId;

    invoke-interface {p1, v1}, Landroid/service/autofill/ValueFinder;->findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 69
    .local v1, "value":Landroid/view/autofill/AutofillValue;
    const-string v2, "DateTransformation"

    if-nez v1, :cond_25

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value for id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/service/autofill/DateTransformation;->mFieldId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 73
    :cond_25
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isDate()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/service/autofill/DateTransformation;->mFieldId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is not date: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 79
    :cond_4e
    :try_start_4e
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getDateValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 80
    .local v3, "date":Ljava/util/Date;
    iget-object v4, p0, Landroid/service/autofill/DateTransformation;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {v4, v3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "transformed":Ljava/lang/String;
    sget-boolean v5, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_7f

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

    .line 83
    :cond_7f
    const-string/jumbo v5, "setText"

    invoke-virtual {p2, p3, v5, v4}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_85} :catch_86

    .line 86
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "transformed":Ljava/lang/String;
    goto :goto_b1

    .line 84
    :catch_86
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not apply "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/autofill/DateTransformation;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_b1
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 94
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateTransformation: [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/DateTransformation;->mFieldId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/DateTransformation;->mDateFormat:Landroid/icu/text/DateFormat;

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

    .line 109
    iget-object v0, p0, Landroid/service/autofill/DateTransformation;->mFieldId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 110
    iget-object v0, p0, Landroid/service/autofill/DateTransformation;->mDateFormat:Landroid/icu/text/DateFormat;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 111
    return-void
.end method
