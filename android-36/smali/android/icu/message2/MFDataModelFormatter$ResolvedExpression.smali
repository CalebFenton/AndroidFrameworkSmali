.class Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;
.super Ljava/lang/Object;
.source "MFDataModelFormatter.java"

# interfaces
.implements Landroid/icu/message2/MFDataModel$Expression;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MFDataModelFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResolvedExpression"
.end annotation


# instance fields
.field final blacklist argument:Ljava/lang/Object;

.field final blacklist functionName:Ljava/lang/String;

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


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "argument"    # Ljava/lang/Object;
    .param p2, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 564
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    iput-object p1, p0, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;->argument:Ljava/lang/Object;

    .line 566
    iput-object p2, p0, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;->functionName:Ljava/lang/String;

    .line 567
    iput-object p3, p0, Landroid/icu/message2/MFDataModelFormatter$ResolvedExpression;->options:Ljava/util/Map;

    .line 568
    return-void
.end method
