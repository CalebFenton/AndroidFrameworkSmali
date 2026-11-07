.class Landroid/app/AppOpsManager$5;
.super Lcom/android/internal/app/IAppOpsStartedCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/app/AppOpsManager$OnOpStartedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpStartedListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/AppOpsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 8997
    iput-object p2, p0, Landroid/app/AppOpsManager$5;->val$callback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsStartedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist opStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 22
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "flags"    # I
    .param p7, "mode"    # I
    .param p8, "startType"    # I
    .param p9, "attributionFlags"    # I
    .param p10, "attributionChainId"    # I

    .line 9002
    iget-object v0, p0, Landroid/app/AppOpsManager$5;->val$callback:Landroid/app/AppOpsManager$OnOpStartedListener;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Landroid/app/AppOpsManager$OnOpStartedListener;->onOpStarted(IILjava/lang/String;Ljava/lang/String;IIIIII)V

    .line 9004
    return-void
.end method
