.class public Landroid/drm/DrmStore$Action;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DISPLAY:I = 0x7

.field public static final EXECUTE:I = 0x6

.field public static final OUTPUT:I = 0x4

.field public static final PLAY:I = 0x1

.field public static final PREVIEW:I = 0x5

.field public static final RINGTONE:I = 0x2

.field public static final TRANSFER:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isValid(I)Z
    .locals 1
    .param p0, "action"    # I

    #@0
    .prologue
    .line 198
    const/4 v0, 0x0

    #@1
    .line 200
    .local v0, "isValid":Z
    packed-switch p0, :pswitch_data_0

    #@4
    .line 211
    :goto_0
    return v0

    #@5
    .line 209
    :pswitch_0
    const/4 v0, 0x1

    #@6
    goto :goto_0

    #@7
    .line 200
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
