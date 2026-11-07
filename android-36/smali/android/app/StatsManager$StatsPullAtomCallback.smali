.class public interface abstract Landroid/app/StatsManager$StatsPullAtomCallback;
.super Ljava/lang/Object;
.source "StatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/StatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatsPullAtomCallback"
.end annotation


# virtual methods
.method public abstract whitelist onPullAtom(ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation
.end method
