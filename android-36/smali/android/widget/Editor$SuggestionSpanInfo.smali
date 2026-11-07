.class final Landroid/widget/Editor$SuggestionSpanInfo;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SuggestionSpanInfo"
.end annotation


# instance fields
.field greylist-max-o mSpanEnd:I

.field greylist-max-o mSpanStart:I

.field greylist-max-o mSuggestionSpan:Landroid/text/style/SuggestionSpan;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 3995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/Editor$SuggestionSpanInfo;-><init>()V

    return-void
.end method


# virtual methods
.method greylist-max-o clear()V
    .registers 2

    .line 4007
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 4008
    return-void
.end method
