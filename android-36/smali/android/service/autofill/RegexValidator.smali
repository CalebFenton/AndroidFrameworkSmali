.class public final Landroid/service/autofill/RegexValidator;
.super Landroid/service/autofill/InternalValidator;
.source "RegexValidator.java"

# interfaces
.implements Landroid/service/autofill/Validator;
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/RegexValidator;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RegexValidator"


# instance fields
.field private final greylist-max-o mId:Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mRegex:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Landroid/service/autofill/RegexValidator$1;

    invoke-direct {v0}, Landroid/service/autofill/RegexValidator$1;-><init>()V

    sput-object v0, Landroid/service/autofill/RegexValidator;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/autofill/AutofillId;Ljava/util/regex/Pattern;)V
    .registers 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "regex"    # Ljava/util/regex/Pattern;

    .line 51
    invoke-direct {p0}, Landroid/service/autofill/InternalValidator;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/service/autofill/RegexValidator;->mId:Landroid/view/autofill/AutofillId;

    .line 53
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    iput-object v0, p0, Landroid/service/autofill/RegexValidator;->mRegex:Ljava/util/regex/Pattern;

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isValid(Landroid/service/autofill/ValueFinder;)Z
    .registers 7
    .param p1, "finder"    # Landroid/service/autofill/ValueFinder;

    .line 60
    iget-object v0, p0, Landroid/service/autofill/RegexValidator;->mId:Landroid/view/autofill/AutofillId;

    invoke-interface {p1, v0}, Landroid/service/autofill/ValueFinder;->findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "value":Ljava/lang/String;
    const-string v1, "RegexValidator"

    if-nez v0, :cond_24

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/autofill/RegexValidator;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, 0x0

    return v1

    .line 66
    :cond_24
    iget-object v2, p0, Landroid/service/autofill/RegexValidator;->mRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 67
    .local v2, "valid":Z
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isValid(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_49
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 76
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegexValidator: [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/RegexValidator;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/RegexValidator;->mRegex:Ljava/util/regex/Pattern;

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

    .line 91
    iget-object v0, p0, Landroid/service/autofill/RegexValidator;->mId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    iget-object v0, p0, Landroid/service/autofill/RegexValidator;->mRegex:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 93
    return-void
.end method
