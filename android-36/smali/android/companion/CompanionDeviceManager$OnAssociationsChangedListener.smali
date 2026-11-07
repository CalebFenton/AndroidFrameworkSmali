.class public interface abstract Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
.super Ljava/lang/Object;
.source "CompanionDeviceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAssociationsChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onAssociationsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation
.end method
