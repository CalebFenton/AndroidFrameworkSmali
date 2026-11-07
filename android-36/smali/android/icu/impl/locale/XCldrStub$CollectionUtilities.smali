.class public Landroid/icu/impl/locale/XCldrStub$CollectionUtilities;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionUtilities"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/lang/Iterable<",
            "TT;>;>(TU;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 285
    .local p0, "source":Ljava/lang/Iterable;, "TU;"
    invoke-static {p0, p1}, Landroid/icu/impl/locale/XCldrStub;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
