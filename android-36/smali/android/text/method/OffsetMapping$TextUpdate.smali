.class public Landroid/text/method/OffsetMapping$TextUpdate;
.super Ljava/lang/Object;
.source "OffsetMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/OffsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextUpdate"
.end annotation


# instance fields
.field public blacklist after:I

.field public blacklist before:I

.field public blacklist where:I


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "where"    # I
    .param p2, "before"    # I
    .param p3, "after"    # I

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Landroid/text/method/OffsetMapping$TextUpdate;->where:I

    .line 167
    iput p2, p0, Landroid/text/method/OffsetMapping$TextUpdate;->before:I

    .line 168
    iput p3, p0, Landroid/text/method/OffsetMapping$TextUpdate;->after:I

    .line 169
    return-void
.end method
