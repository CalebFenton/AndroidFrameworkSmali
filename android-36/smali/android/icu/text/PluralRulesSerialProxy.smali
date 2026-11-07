.class Landroid/icu/text/PluralRulesSerialProxy;
.super Ljava/lang/Object;
.source "PluralRulesSerialProxy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x2aL


# instance fields
.field private final blacklist data:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "rules"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Landroid/icu/text/PluralRulesSerialProxy;->data:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Landroid/icu/text/PluralRulesSerialProxy;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/text/PluralRules;->createRules(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method
