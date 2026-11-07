.class public Lcom/android/internal/telephony/cat/TextAttribute;
.super Ljava/lang/Object;
.source "TextAttribute.java"


# instance fields
.field public blacklist align:Lcom/android/internal/telephony/cat/TextAlignment;

.field public blacklist bold:Z

.field public blacklist color:Lcom/android/internal/telephony/cat/TextColor;

.field public blacklist italic:Z

.field public blacklist length:I

.field public blacklist size:Lcom/android/internal/telephony/cat/FontSize;

.field public blacklist start:I

.field public blacklist strikeThrough:Z

.field public blacklist underlined:Z


# direct methods
.method public constructor blacklist <init>(IILcom/android/internal/telephony/cat/TextAlignment;Lcom/android/internal/telephony/cat/FontSize;ZZZZLcom/android/internal/telephony/cat/TextColor;)V
    .registers 10

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/internal/telephony/cat/TextAttribute;->start:I

    .line 40
    iput p2, p0, Lcom/android/internal/telephony/cat/TextAttribute;->length:I

    .line 41
    iput-object p3, p0, Lcom/android/internal/telephony/cat/TextAttribute;->align:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 42
    iput-object p4, p0, Lcom/android/internal/telephony/cat/TextAttribute;->size:Lcom/android/internal/telephony/cat/FontSize;

    .line 43
    iput-boolean p5, p0, Lcom/android/internal/telephony/cat/TextAttribute;->bold:Z

    .line 44
    iput-boolean p6, p0, Lcom/android/internal/telephony/cat/TextAttribute;->italic:Z

    .line 45
    iput-boolean p7, p0, Lcom/android/internal/telephony/cat/TextAttribute;->underlined:Z

    .line 46
    iput-boolean p8, p0, Lcom/android/internal/telephony/cat/TextAttribute;->strikeThrough:Z

    .line 47
    iput-object p9, p0, Lcom/android/internal/telephony/cat/TextAttribute;->color:Lcom/android/internal/telephony/cat/TextColor;

    return-void
.end method
