.class public final Landroid/adservices/signals/UpdateSignalsInput;
.super Ljava/lang/Object;
.source "UpdateSignalsInput.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/signals/UpdateSignalsInput$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/signals/UpdateSignalsInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallerPackageName:Ljava/lang/String;

.field private final blacklist mUpdateUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/adservices/signals/UpdateSignalsInput$1;

    invoke-direct {v0}, Landroid/adservices/signals/UpdateSignalsInput$1;-><init>()V

    sput-object v0, Landroid/adservices/signals/UpdateSignalsInput;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3
    .param p1, "updateUri"    # Landroid/net/Uri;
    .param p2, "callerPackageName"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Landroid/adservices/signals/UpdateSignalsInput;->mUpdateUri:Landroid/net/Uri;

    .line 58
    iput-object p2, p0, Landroid/adservices/signals/UpdateSignalsInput;->mCallerPackageName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/adservices/signals/UpdateSignalsInput-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/adservices/signals/UpdateSignalsInput;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 65
    .local v0, "updateUri":Landroid/net/Uri;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iput-object v0, p0, Landroid/adservices/signals/UpdateSignalsInput;->mUpdateUri:Landroid/net/Uri;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "callerPackageName":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iput-object v1, p0, Landroid/adservices/signals/UpdateSignalsInput;->mCallerPackageName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/signals/UpdateSignalsInput-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/signals/UpdateSignalsInput;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    instance-of v0, p1, Landroid/adservices/signals/UpdateSignalsInput;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 108
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/adservices/signals/UpdateSignalsInput;

    .line 109
    .local v0, "that":Landroid/adservices/signals/UpdateSignalsInput;
    iget-object v2, p0, Landroid/adservices/signals/UpdateSignalsInput;->mUpdateUri:Landroid/net/Uri;

    iget-object v3, v0, Landroid/adservices/signals/UpdateSignalsInput;->mUpdateUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/adservices/signals/UpdateSignalsInput;->mCallerPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/adservices/signals/UpdateSignalsInput;->mCallerPackageName:Ljava/lang/String;

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 109
    :goto_20
    return v1
.end method

.method public blacklist getCallerPackageName()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/adservices/signals/UpdateSignalsInput;->mCallerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUpdateUri()Landroid/net/Uri;
    .registers 2

    .line 77
    iget-object v0, p0, Landroid/adservices/signals/UpdateSignalsInput;->mUpdateUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 118
    iget-object v0, p0, Landroid/adservices/signals/UpdateSignalsInput;->mUpdateUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/adservices/signals/UpdateSignalsInput;->mCallerPackageName:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateSignalsInput{mUpdateUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/signals/UpdateSignalsInput;->mUpdateUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallerPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/adservices/signals/UpdateSignalsInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 95
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Landroid/adservices/signals/UpdateSignalsInput;->mUpdateUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    iget-object v0, p0, Landroid/adservices/signals/UpdateSignalsInput;->mCallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return-void
.end method
