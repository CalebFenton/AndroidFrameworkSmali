.class public final Landroid/media/TimedText$Font;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Font"
.end annotation


# instance fields
.field public final greylist-max-o ID:I

.field public final greylist-max-o name:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput p1, p0, Landroid/media/TimedText$Font;->ID:I

    .line 265
    iput-object p2, p0, Landroid/media/TimedText$Font;->name:Ljava/lang/String;

    .line 266
    return-void
.end method
