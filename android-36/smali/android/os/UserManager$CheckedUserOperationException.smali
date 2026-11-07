.class public Landroid/os/UserManager$CheckedUserOperationException;
.super Landroid/util/AndroidException;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckedUserOperationException"
.end annotation


# instance fields
.field private final blacklist mUserOperationResult:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "userOperationResult"    # I

    .line 2566
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 2567
    iput p2, p0, Landroid/os/UserManager$CheckedUserOperationException;->mUserOperationResult:I

    .line 2568
    return-void
.end method


# virtual methods
.method public blacklist getUserOperationResult()I
    .registers 2

    .line 2572
    iget v0, p0, Landroid/os/UserManager$CheckedUserOperationException;->mUserOperationResult:I

    return v0
.end method

.method public blacklist toServiceSpecificException()Landroid/os/ServiceSpecificException;
    .registers 4

    .line 2577
    new-instance v0, Landroid/os/ServiceSpecificException;

    iget v1, p0, Landroid/os/UserManager$CheckedUserOperationException;->mUserOperationResult:I

    invoke-virtual {p0}, Landroid/os/UserManager$CheckedUserOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
