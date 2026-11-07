.class public abstract Landroid/uwb/UwbManager$AdfProvisionStateCallback;
.super Ljava/lang/Object;
.source "UwbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/UwbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdfProvisionStateCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;,
        Landroid/uwb/UwbManager$AdfProvisionStateCallback$Reason;
    }
.end annotation


# static fields
.field public static final whitelist REASON_INVALID_OID:I = 0x1

.field public static final whitelist REASON_SE_FAILURE:I = 0x2

.field public static final whitelist REASON_UNKNOWN:I = 0x3


# instance fields
.field private final blacklist mAdfProvisionStateCallbackProxy:Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;

    invoke-direct {v0}, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;-><init>()V

    iput-object v0, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback;->mAdfProvisionStateCallbackProxy:Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;

    .line 192
    return-void
.end method


# virtual methods
.method blacklist getProxy()Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;
    .registers 2

    .line 241
    iget-object v0, p0, Landroid/uwb/UwbManager$AdfProvisionStateCallback;->mAdfProvisionStateCallbackProxy:Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;

    return-object v0
.end method

.method public abstract whitelist onProfileAdfsProvisionFailed(ILandroid/os/PersistableBundle;)V
.end method

.method public abstract whitelist onProfileAdfsProvisioned(Landroid/os/PersistableBundle;)V
.end method
