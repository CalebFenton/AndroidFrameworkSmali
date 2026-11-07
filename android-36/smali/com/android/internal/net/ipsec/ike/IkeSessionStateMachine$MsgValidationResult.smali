.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
.super Ljava/lang/Object;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MsgValidationResult"
.end annotation


# static fields
.field static final blacklist RESULT_ERROR_INVALID_MESSAGE:I = 0x1

.field static final blacklist RESULT_ERROR_RCV_NOTIFY:I = 0x2

.field static final blacklist RESULT_OK:I


# instance fields
.field private final blacklist mException:Landroid/net/ipsec/ike/exceptions/IkeException;

.field private final blacklist mResult:I


# direct methods
.method private constructor blacklist <init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 3808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3809
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->mResult:I

    .line 3810
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->mException:Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 3811
    return-void
.end method

.method static blacklist newResultInvalidMsg(Landroid/net/ipsec/ike/exceptions/IkeException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    .registers 3
    .param p0, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeException;

    .line 3818
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;-><init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    return-object v0
.end method

.method static blacklist newResultOk()Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    .registers 3

    .line 3814
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;-><init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    return-object v0
.end method

.method static blacklist newResultRcvErrorNotify(Landroid/net/ipsec/ike/exceptions/IkeProtocolException;)Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;
    .registers 3
    .param p0, "exception"    # Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    .line 3823
    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;-><init>(ILandroid/net/ipsec/ike/exceptions/IkeException;)V

    return-object v0
.end method


# virtual methods
.method blacklist getException()Landroid/net/ipsec/ike/exceptions/IkeException;
    .registers 2

    .line 3832
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->mException:Landroid/net/ipsec/ike/exceptions/IkeException;

    return-object v0
.end method

.method blacklist getResult()I
    .registers 2

    .line 3827
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$MsgValidationResult;->mResult:I

    return v0
.end method
