.class Landroid/widget/RemoteViews$MethodArgs;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodArgs"
.end annotation


# instance fields
.field public greylist-max-o asyncMethod:Ljava/lang/invoke/MethodHandle;

.field public greylist-max-o asyncMethodName:Ljava/lang/String;

.field public greylist-max-o syncMethod:Ljava/lang/invoke/MethodHandle;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
