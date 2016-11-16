.class Llibcore/icu/RelativeDateTimeFormatter$FormatterCache;
.super Llibcore/util/BasicLruCache;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FormatterCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/icu/text/RelativeDateTimeFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 57
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Llibcore/util/BasicLruCache;-><init>(I)V

    #@5
    .line 56
    return-void
.end method
