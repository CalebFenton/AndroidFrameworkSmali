.class Landroid/icu/impl/personname/FieldModifierImpl$AllCapsModifier;
.super Landroid/icu/impl/personname/FieldModifierImpl;
.source "FieldModifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/personname/FieldModifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AllCapsModifier"
.end annotation


# instance fields
.field private final blacklist locale:Ljava/util/Locale;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Locale;)V
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 80
    invoke-direct {p0}, Landroid/icu/impl/personname/FieldModifierImpl;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/icu/impl/personname/FieldModifierImpl$AllCapsModifier;->locale:Ljava/util/Locale;

    .line 82
    return-void
.end method


# virtual methods
.method public blacklist modifyField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "fieldValue"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Landroid/icu/impl/personname/FieldModifierImpl$AllCapsModifier;->locale:Ljava/util/Locale;

    invoke-static {v0, p1}, Landroid/icu/lang/UCharacter;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
