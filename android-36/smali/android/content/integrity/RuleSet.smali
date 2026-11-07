.class public Landroid/content/integrity/RuleSet;
.super Ljava/lang/Object;
.source "RuleSet.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/integrity/RuleSet$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVersion:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/content/integrity/RuleSet;->mVersion:Ljava/lang/String;

    .line 39
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/RuleSet;->mRules:Ljava/util/List;

    .line 40
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/List;Landroid/content/integrity/RuleSet-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/content/integrity/RuleSet;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist getRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroid/content/integrity/RuleSet;->mRules:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getVersion()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Landroid/content/integrity/RuleSet;->mVersion:Ljava/lang/String;

    return-object v0
.end method
