.class public final Ljava/lang/Enum$EnumDesc;
.super Ljava/lang/constant/DynamicConstantDesc;
.source "Enum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Enum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/constant/DynamicConstantDesc<",
        "TE;>;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/constant/ClassDesc;Ljava/lang/String;)V
    .registers 7
    .param p1, "constantClass"    # Ljava/lang/constant/ClassDesc;
    .param p2, "constantName"    # Ljava/lang/String;

    .line 378
    .local p0, "this":Ljava/lang/Enum$EnumDesc;, "Ljava/lang/Enum$EnumDesc<TE;>;"
    sget-object v0, Ljava/lang/constant/ConstantDescs;->BSM_ENUM_CONSTANT:Ljava/lang/constant/DirectMethodHandleDesc;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/constant/ClassDesc;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/constant/ConstantDesc;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/lang/constant/DynamicConstantDesc;-><init>(Ljava/lang/constant/DirectMethodHandleDesc;Ljava/lang/String;Ljava/lang/constant/ClassDesc;[Ljava/lang/constant/ConstantDesc;)V

    .line 379
    return-void
.end method

.method public static blacklist of(Ljava/lang/constant/ClassDesc;Ljava/lang/String;)Ljava/lang/Enum$EnumDesc;
    .registers 3
    .param p0, "enumClass"    # Ljava/lang/constant/ClassDesc;
    .param p1, "constantName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/constant/ClassDesc;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Enum$EnumDesc<",
            "TE;>;"
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/lang/Enum$EnumDesc;

    invoke-direct {v0, p0, p1}, Ljava/lang/Enum$EnumDesc;-><init>(Ljava/lang/constant/ClassDesc;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Enum;
    .registers 4
    .param p1, "lookup"    # Ljava/lang/invoke/MethodHandles$Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 401
    .local p0, "this":Ljava/lang/Enum$EnumDesc;, "Ljava/lang/Enum$EnumDesc<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Enum$EnumDesc;->constantType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/constant/ClassDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum$EnumDesc;->constantName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 366
    .local p0, "this":Ljava/lang/Enum$EnumDesc;, "Ljava/lang/Enum$EnumDesc<TE;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Enum$EnumDesc;->resolveConstantDesc(Ljava/lang/invoke/MethodHandles$Lookup;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 406
    .local p0, "this":Ljava/lang/Enum$EnumDesc;, "Ljava/lang/Enum$EnumDesc<TE;>;"
    invoke-virtual {p0}, Ljava/lang/Enum$EnumDesc;->constantType()Ljava/lang/constant/ClassDesc;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/constant/ClassDesc;->displayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum$EnumDesc;->constantName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "EnumDesc[%s.%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
