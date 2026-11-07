.class Ljava/lang/invoke/FieldVarHandle;
.super Ljava/lang/invoke/VarHandle;
.source "FieldVarHandle.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist artField:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 26
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/reflect/Field;)V
    .registers 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 35
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Ljava/lang/invoke/VarHandle;-><init>(Ljava/lang/Class;Z)V

    .line 36
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getArtField()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/invoke/FieldVarHandle;->artField:J

    .line 37
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    .registers 5
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 30
    .local p2, "coordinateType0":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Ljava/lang/invoke/VarHandle;-><init>(Ljava/lang/Class;ZLjava/lang/Class;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getArtField()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/lang/invoke/FieldVarHandle;->artField:J

    .line 32
    return-void
.end method

.method static blacklist create(Ljava/lang/reflect/Field;)Ljava/lang/invoke/FieldVarHandle;
    .registers 3
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 40
    nop

    .line 41
    new-instance v0, Ljava/lang/invoke/FieldVarHandle;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/invoke/FieldVarHandle;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    return-object v0
.end method
