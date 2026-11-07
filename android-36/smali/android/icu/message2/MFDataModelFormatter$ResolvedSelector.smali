.class Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;
.super Ljava/lang/Object;
.source "MFDataModelFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MFDataModelFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolvedSelector"
.end annotation


# instance fields
.field final blacklist argument:Ljava/lang/Object;

.field final blacklist options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist selectorFunction:Landroid/icu/message2/Selector;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/util/Map;Landroid/icu/message2/Selector;)V
    .registers 5
    .param p1, "argument"    # Ljava/lang/Object;
    .param p3, "selectorFunction"    # Landroid/icu/message2/Selector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/message2/Selector;",
            ")V"
        }
    .end annotation

    .line 399
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p1, p0, Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;->argument:Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;->options:Ljava/util/Map;

    .line 402
    iput-object p3, p0, Landroid/icu/message2/MFDataModelFormatter$ResolvedSelector;->selectorFunction:Landroid/icu/message2/Selector;

    .line 403
    return-void
.end method
