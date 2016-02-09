.class final Lcom/android/ims/ImsManager$1;
.super Ljava/lang/Object;
.source "ImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ims/ImsManager;->setWfcModeInternal(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$imsManager:Lcom/android/ims/ImsManager;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/ims/ImsManager;I)V
    .locals 0
    .param p1, "val$imsManager"    # Lcom/android/ims/ImsManager;
    .param p2, "val$value"    # I

    #@0
    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/ims/ImsManager$1;->val$imsManager:Lcom/android/ims/ImsManager;

    #@2
    iput p2, p0, Lcom/android/ims/ImsManager$1;->val$value:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager$1;->val$imsManager:Lcom/android/ims/ImsManager;

    #@2
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    #@5
    move-result-object v1

    #@6
    .line 366
    iget v2, p0, Lcom/android/ims/ImsManager$1;->val$value:I

    #@8
    .line 365
    const/16 v3, 0x1a

    #@a
    .line 364
    invoke-virtual {v1, v3, v2}, Lcom/android/ims/ImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 362
    :goto_0
    return-void

    #@e
    .line 367
    :catch_0
    move-exception v0

    #@f
    .local v0, "e":Lcom/android/ims/ImsException;
    goto :goto_0
.end method
