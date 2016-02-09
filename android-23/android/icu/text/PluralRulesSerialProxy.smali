.class Landroid/icu/text/PluralRulesSerialProxy;
.super Ljava/lang/Object;
.source "PluralRulesSerialProxy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2aL


# instance fields
.field private final data:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "rules"    # Ljava/lang/String;

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20
    iput-object p1, p0, Landroid/icu/text/PluralRulesSerialProxy;->data:Ljava/lang/String;

    #@5
    .line 19
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 23
    iget-object v0, p0, Landroid/icu/text/PluralRulesSerialProxy;->data:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/icu/text/PluralRules;->createRules(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
