.class Landroid/text/format/DateTimeFormat$FormatterCache;
.super Landroid/util/LruCache;
.source "DateTimeFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/DateTimeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FormatterCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/icu/text/DateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 38
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 39
    return-void
.end method
