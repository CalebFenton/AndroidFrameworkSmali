.class public Landroid/media/Cea708CCParser$CaptionEvent;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea708CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptionEvent"
.end annotation


# instance fields
.field public final greylist-max-o obj:Ljava/lang/Object;

.field public final greylist-max-o type:I


# direct methods
.method public constructor greylist-max-o <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput p1, p0, Landroid/media/Cea708CCParser$CaptionEvent;->type:I

    .line 870
    iput-object p2, p0, Landroid/media/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    .line 871
    return-void
.end method
