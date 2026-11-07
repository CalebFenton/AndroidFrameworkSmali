.class Landroid/service/autofill/FieldClassification$1;
.super Ljava/lang/Object;
.source "FieldClassification.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/service/autofill/FieldClassification$Match;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/service/autofill/FieldClassification;)V
    .registers 2
    .param p1, "this$0"    # Landroid/service/autofill/FieldClassification;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/service/autofill/FieldClassification$Match;Landroid/service/autofill/FieldClassification$Match;)I
    .registers 5
    .param p1, "o1"    # Landroid/service/autofill/FieldClassification$Match;
    .param p2, "o2"    # Landroid/service/autofill/FieldClassification$Match;

    .line 45
    invoke-static {p1}, Landroid/service/autofill/FieldClassification$Match;->-$$Nest$fgetmScore(Landroid/service/autofill/FieldClassification$Match;)F

    move-result v0

    invoke-static {p2}, Landroid/service/autofill/FieldClassification$Match;->-$$Nest$fgetmScore(Landroid/service/autofill/FieldClassification$Match;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    const/4 v0, -0x1

    return v0

    .line 46
    :cond_e
    invoke-static {p1}, Landroid/service/autofill/FieldClassification$Match;->-$$Nest$fgetmScore(Landroid/service/autofill/FieldClassification$Match;)F

    move-result v0

    invoke-static {p2}, Landroid/service/autofill/FieldClassification$Match;->-$$Nest$fgetmScore(Landroid/service/autofill/FieldClassification$Match;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    return v0

    .line 47
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 42
    check-cast p1, Landroid/service/autofill/FieldClassification$Match;

    check-cast p2, Landroid/service/autofill/FieldClassification$Match;

    invoke-virtual {p0, p1, p2}, Landroid/service/autofill/FieldClassification$1;->compare(Landroid/service/autofill/FieldClassification$Match;Landroid/service/autofill/FieldClassification$Match;)I

    move-result p1

    return p1
.end method
