.class public interface abstract Landroid/app/AppOpsManager$HistoricalOpsVisitor;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HistoricalOpsVisitor"
.end annotation


# virtual methods
.method public abstract blacklist visitHistoricalAttributionOps(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
.end method

.method public abstract blacklist visitHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;)V
.end method

.method public abstract blacklist visitHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
.end method

.method public abstract blacklist visitHistoricalPackageOps(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
.end method

.method public abstract blacklist visitHistoricalUidOps(Landroid/app/AppOpsManager$HistoricalUidOps;)V
.end method
