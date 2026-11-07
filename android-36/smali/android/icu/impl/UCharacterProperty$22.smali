.class Landroid/icu/impl/UCharacterProperty$22;
.super Landroid/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/impl/UCharacterProperty;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .param p2, "source"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 833
    iput-object p1, p0, Landroid/icu/impl/UCharacterProperty$22;->this$0:Landroid/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method blacklist getMaxValue(I)I
    .registers 4
    .param p1, "which"    # I

    .line 840
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty$22;->this$0:Landroid/icu/impl/UCharacterProperty;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/impl/UCharacterProperty;->getMaxValues(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method

.method blacklist getValue(I)I
    .registers 3
    .param p1, "c"    # I

    .line 836
    invoke-static {p1}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v0

    return v0
.end method
