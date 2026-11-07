.class public Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;
.super Ljava/lang/Object;
.source "RemoteOptionsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteOptResponse"
.end annotation


# instance fields
.field private blacklist mErrorReason:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mErrorSipCode:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsNumberBlocked:Z

.field private blacklist mRcsContactCapability:Landroid/telephony/ims/RcsContactUceCapability;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->mErrorSipCode:Ljava/util/Optional;

    .line 54
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->mErrorReason:Ljava/util/Optional;

    .line 55
    return-void
.end method


# virtual methods
.method public blacklist getErrorReason()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->mErrorReason:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getErrorSipCode()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->mErrorSipCode:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getRcsContactCapability()Landroid/telephony/ims/RcsContactUceCapability;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->mRcsContactCapability:Landroid/telephony/ims/RcsContactUceCapability;

    return-object v0
.end method

.method public blacklist isNumberBlocked()Z
    .registers 2

    .line 68
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->mIsNumberBlocked:Z

    return v0
.end method

.method blacklist setRespondToRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    .registers 3
    .param p1, "capability"    # Landroid/telephony/ims/RcsContactUceCapability;
    .param p2, "isBlocked"    # Z

    .line 58
    iput-boolean p2, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->mIsNumberBlocked:Z

    .line 59
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->mRcsContactCapability:Landroid/telephony/ims/RcsContactUceCapability;

    .line 60
    return-void
.end method

.method blacklist setRespondToRequestWithError(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->mErrorSipCode:Ljava/util/Optional;

    .line 64
    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/RemoteOptionsRequest$RemoteOptResponse;->mErrorReason:Ljava/util/Optional;

    .line 65
    return-void
.end method
