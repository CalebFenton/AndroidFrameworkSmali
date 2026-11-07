.class final Landroid/app/BackStackRecord$Op;
.super Ljava/lang/Object;
.source "BackStackRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BackStackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field greylist-max-o cmd:I

.field greylist-max-o enterAnim:I

.field greylist-max-o exitAnim:I

.field greylist-max-o fragment:Landroid/app/Fragment;

.field greylist-max-o popEnterAnim:I

.field greylist-max-o popExitAnim:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    return-void
.end method

.method constructor greylist-max-o <init>(ILandroid/app/Fragment;)V
    .registers 3
    .param p1, "cmd"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput p1, p0, Landroid/app/BackStackRecord$Op;->cmd:I

    .line 203
    iput-object p2, p0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    .line 204
    return-void
.end method
