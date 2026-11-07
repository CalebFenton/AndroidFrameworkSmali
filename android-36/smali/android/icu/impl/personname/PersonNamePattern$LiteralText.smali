.class Landroid/icu/impl/personname/PersonNamePattern$LiteralText;
.super Ljava/lang/Object;
.source "PersonNamePattern.java"

# interfaces
.implements Landroid/icu/impl/personname/PersonNamePattern$Element;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/personname/PersonNamePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiteralText"
.end annotation


# instance fields
.field private blacklist text:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Landroid/icu/impl/personname/PersonNamePattern$LiteralText;->text:Ljava/lang/String;

    .line 268
    return-void
.end method


# virtual methods
.method public blacklist format(Landroid/icu/text/PersonName;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Landroid/icu/text/PersonName;

    .line 280
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNamePattern$LiteralText;->text:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isLiteral()Z
    .registers 2

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isPopulated(Landroid/icu/text/PersonName;)Z
    .registers 3
    .param p1, "name"    # Landroid/icu/text/PersonName;

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 272
    iget-object v0, p0, Landroid/icu/impl/personname/PersonNamePattern$LiteralText;->text:Ljava/lang/String;

    return-object v0
.end method
