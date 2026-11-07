.class public interface abstract Landroid/app/AppOpsManager$OnOpChangedListener;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnOpChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public blacklist onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 7855
    invoke-interface {p0, p1, p2}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 7856
    return-void
.end method

.method public whitelist onOpChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "persistentDeviceId"    # Ljava/lang/String;

    .line 7877
    const-string v0, "default:0"

    invoke-static {p4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7879
    invoke-interface {p0, p1, p2, p3}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7881
    :cond_b
    return-void
.end method
