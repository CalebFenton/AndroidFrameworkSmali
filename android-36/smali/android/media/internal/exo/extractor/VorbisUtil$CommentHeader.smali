.class public final Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/extractor/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentHeader"
.end annotation


# instance fields
.field public final blacklist comments:[Ljava/lang/String;

.field public final blacklist length:I

.field public final blacklist vendor:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;->vendor:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 37
    iput p3, p0, Landroid/media/internal/exo/extractor/VorbisUtil$CommentHeader;->length:I

    return-void
.end method
