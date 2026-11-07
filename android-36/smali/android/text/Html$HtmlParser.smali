.class Landroid/text/Html$HtmlParser;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Html;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HtmlParser"
.end annotation


# static fields
.field private static final greylist-max-o schema:Lorg/ccil/cowan/tagsoup/HTMLSchema;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetschema()Lorg/ccil/cowan/tagsoup/HTMLSchema;
    .registers 1

    sget-object v0, Landroid/text/Html$HtmlParser;->schema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 210
    new-instance v0, Lorg/ccil/cowan/tagsoup/HTMLSchema;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/HTMLSchema;-><init>()V

    sput-object v0, Landroid/text/Html$HtmlParser;->schema:Lorg/ccil/cowan/tagsoup/HTMLSchema;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
