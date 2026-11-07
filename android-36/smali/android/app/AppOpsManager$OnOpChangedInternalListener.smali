.class public Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnOpChangedInternalListener"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 8041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o onOpChanged(ILjava/lang/String;)V
    .registers 3
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 8043
    return-void
.end method

.method public blacklist onOpChanged(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "persistentDeviceId"    # Ljava/lang/String;

    .line 8045
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;->onOpChanged(ILjava/lang/String;)V

    .line 8046
    return-void
.end method

.method public whitelist onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 8042
    return-void
.end method
