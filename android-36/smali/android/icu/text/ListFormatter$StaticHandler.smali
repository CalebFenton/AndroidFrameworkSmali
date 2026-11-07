.class final Landroid/icu/text/ListFormatter$StaticHandler;
.super Ljava/lang/Object;
.source "ListFormatter.java"

# interfaces
.implements Landroid/icu/text/ListFormatter$PatternHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StaticHandler"
.end annotation


# instance fields
.field private final blacklist endPattern:Ljava/lang/String;

.field private final blacklist twoPattern:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "two"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Landroid/icu/text/ListFormatter$StaticHandler;->twoPattern:Ljava/lang/String;

    .line 415
    iput-object p2, p0, Landroid/icu/text/ListFormatter$StaticHandler;->endPattern:Ljava/lang/String;

    .line 416
    return-void
.end method


# virtual methods
.method public blacklist getEndPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 422
    iget-object v0, p0, Landroid/icu/text/ListFormatter$StaticHandler;->endPattern:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTwoPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 419
    iget-object v0, p0, Landroid/icu/text/ListFormatter$StaticHandler;->twoPattern:Ljava/lang/String;

    return-object v0
.end method
