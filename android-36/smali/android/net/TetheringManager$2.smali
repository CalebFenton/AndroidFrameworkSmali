.class Landroid/net/TetheringManager$2;
.super Landroid/net/IIntResultListener$Stub;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/TetheringManager;->stopTethering(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/net/TetheringManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/TetheringManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1453
    invoke-direct {p0}, Landroid/net/IIntResultListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onResult(I)V
    .registers 2
    .param p1, "resultCode"    # I

    .line 1460
    return-void
.end method
