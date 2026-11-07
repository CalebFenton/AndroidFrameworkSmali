.class public final synthetic Ljava/util/Collections$CheckedList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Collections$CheckedList;

.field public final synthetic blacklist f$1:Ljava/util/function/UnaryOperator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Collections$CheckedList;Ljava/util/function/UnaryOperator;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Collections$CheckedList$$ExternalSyntheticLambda0;->f$0:Ljava/util/Collections$CheckedList;

    iput-object p2, p0, Ljava/util/Collections$CheckedList$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/UnaryOperator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Ljava/util/Collections$CheckedList$$ExternalSyntheticLambda0;->f$0:Ljava/util/Collections$CheckedList;

    iget-object v1, p0, Ljava/util/Collections$CheckedList$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/UnaryOperator;

    invoke-static {v0, v1, p1}, Ljava/util/Collections$CheckedList;->$r8$lambda$SajGEIWZxfpbHw9TykuMp2TTEa8(Ljava/util/Collections$CheckedList;Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
