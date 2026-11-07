.class public Landroid/icu/impl/locale/XCldrStub$Joiner;
.super Ljava/lang/Object;
.source "XCldrStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XCldrStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Joiner"
.end annotation


# instance fields
.field private final greylist-max-o separator:Ljava/lang/String;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "separator"    # Ljava/lang/String;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Landroid/icu/impl/locale/XCldrStub$Joiner;->separator:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public static final blacklist on(Ljava/lang/String;)Landroid/icu/impl/locale/XCldrStub$Joiner;
    .registers 2
    .param p0, "separator"    # Ljava/lang/String;

    .line 298
    new-instance v0, Landroid/icu/impl/locale/XCldrStub$Joiner;

    invoke-direct {v0, p0}, Landroid/icu/impl/locale/XCldrStub$Joiner;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist join(Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 304
    .local p1, "source":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Joiner;->separator:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/icu/impl/locale/XCldrStub;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist join([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 301
    .local p1, "source":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroid/icu/impl/locale/XCldrStub$Joiner;->separator:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/icu/impl/locale/XCldrStub;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
