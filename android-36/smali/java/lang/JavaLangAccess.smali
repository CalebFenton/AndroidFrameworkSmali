.class public final Ljava/lang/JavaLangAccess;
.super Ljava/lang/Object;
.source "JavaLangAccess.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getEnumConstantsShared(Ljava/lang/Class;)[Ljava/lang/Enum;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)[TE;"
        }
    .end annotation

    .line 89
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstantsShared()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    return-object v0
.end method
