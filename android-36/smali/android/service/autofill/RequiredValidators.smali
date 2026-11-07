.class final Landroid/service/autofill/RequiredValidators;
.super Landroid/service/autofill/InternalValidator;
.source "RequiredValidators.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/RequiredValidators;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "RequiredValidators"


# instance fields
.field private final blacklist mValidators:[Landroid/service/autofill/InternalValidator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Landroid/service/autofill/RequiredValidators$1;

    invoke-direct {v0}, Landroid/service/autofill/RequiredValidators$1;-><init>()V

    sput-object v0, Landroid/service/autofill/RequiredValidators;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>([Landroid/service/autofill/InternalValidator;)V
    .registers 3
    .param p1, "validators"    # [Landroid/service/autofill/InternalValidator;

    .line 44
    invoke-direct {p0}, Landroid/service/autofill/InternalValidator;-><init>()V

    .line 45
    const-string/jumbo v0, "validators"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/service/autofill/InternalValidator;

    iput-object v0, p0, Landroid/service/autofill/RequiredValidators;->mValidators:[Landroid/service/autofill/InternalValidator;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isValid(Landroid/service/autofill/ValueFinder;)Z
    .registers 10
    .param p1, "finder"    # Landroid/service/autofill/ValueFinder;

    .line 50
    iget-object v0, p0, Landroid/service/autofill/RequiredValidators;->mValidators:[Landroid/service/autofill/InternalValidator;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_3a

    aget-object v4, v0, v3

    .line 51
    .local v4, "validator":Landroid/service/autofill/InternalValidator;
    invoke-virtual {v4, p1}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v5

    .line 52
    .local v5, "valid":Z
    sget-boolean v6, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_34

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isValid("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RequiredValidators"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_34
    if-nez v5, :cond_37

    return v2

    .line 50
    .end local v4    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v5    # "valid":Z
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 55
    :cond_3a
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 63
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequiredValidators: [validators="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/autofill/RequiredValidators;->mValidators:[Landroid/service/autofill/InternalValidator;

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget-object v0, p0, Landroid/service/autofill/RequiredValidators;->mValidators:[Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 82
    return-void
.end method
