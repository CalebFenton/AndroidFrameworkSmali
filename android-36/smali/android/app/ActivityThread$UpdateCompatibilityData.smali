.class final Landroid/app/ActivityThread$UpdateCompatibilityData;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UpdateCompatibilityData"
.end annotation


# instance fields
.field greylist-max-o info:Landroid/content/res/CompatibilityInfo;

.field greylist-max-o pkg:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
