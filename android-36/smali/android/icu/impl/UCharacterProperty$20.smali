.class Landroid/icu/impl/UCharacterProperty$20;
.super Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UCharacterProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/UCharacterProperty;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/impl/UCharacterProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 816
    invoke-direct {p0, p1}, Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    return-void
.end method


# virtual methods
.method blacklist getValue(I)I
    .registers 3
    .param p1, "c"    # I

    .line 819
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v0, p1}, Landroid/icu/impl/UBiDiProps;->getJoiningType(I)I

    move-result v0

    return v0
.end method
