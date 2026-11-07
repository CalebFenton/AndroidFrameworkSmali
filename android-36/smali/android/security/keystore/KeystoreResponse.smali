.class public Landroid/security/keystore/KeystoreResponse;
.super Ljava/lang/Object;
.source "KeystoreResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/KeystoreResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist error_code_:I

.field public final blacklist error_msg_:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/security/keystore/KeystoreResponse$1;

    invoke-direct {v0}, Landroid/security/keystore/KeystoreResponse$1;-><init>()V

    sput-object v0, Landroid/security/keystore/KeystoreResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "error_code"    # I
    .param p2, "error_msg"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/security/keystore/KeystoreResponse;->error_code_:I

    .line 50
    iput-object p2, p0, Landroid/security/keystore/KeystoreResponse;->error_msg_:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist getErrorCode()I
    .registers 2

    .line 57
    iget v0, p0, Landroid/security/keystore/KeystoreResponse;->error_code_:I

    return v0
.end method

.method public final blacklist getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/security/keystore/KeystoreResponse;->error_msg_:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 75
    iget v0, p0, Landroid/security/keystore/KeystoreResponse;->error_code_:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Landroid/security/keystore/KeystoreResponse;->error_msg_:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return-void
.end method
