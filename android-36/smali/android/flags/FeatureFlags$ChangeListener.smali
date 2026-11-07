.class public interface abstract Landroid/flags/FeatureFlags$ChangeListener;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/flags/FeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChangeListener"
.end annotation


# virtual methods
.method public abstract blacklist onFlagChanged(Landroid/flags/DynamicFlag;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/DynamicFlag<",
            "*>;)V"
        }
    .end annotation
.end method
