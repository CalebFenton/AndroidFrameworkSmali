.class final Landroid/text/util/Linkify$3;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Landroid/text/util/Linkify$TransformFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/util/Linkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "match"    # Ljava/util/regex/Matcher;
    .param p2, "url"    # Ljava/lang/String;

    #@0
    .prologue
    .line 147
    invoke-static {p1}, Landroid/util/Patterns;->digitsAndPlusOnly(Ljava/util/regex/Matcher;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
