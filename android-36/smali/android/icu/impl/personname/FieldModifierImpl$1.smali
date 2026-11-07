.class Landroid/icu/impl/personname/FieldModifierImpl$1;
.super Landroid/icu/impl/personname/FieldModifierImpl;
.source "FieldModifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/personname/FieldModifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Landroid/icu/impl/personname/FieldModifierImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist modifyField(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "fieldValue"    # Ljava/lang/String;

    .line 58
    return-object p1
.end method
