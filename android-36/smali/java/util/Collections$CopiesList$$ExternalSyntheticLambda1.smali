.class public final synthetic Ljava/util/Collections$CopiesList$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Collections$CopiesList;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Collections$CopiesList;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Collections$CopiesList$$ExternalSyntheticLambda1;->f$0:Ljava/util/Collections$CopiesList;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/util/Collections$CopiesList$$ExternalSyntheticLambda1;->f$0:Ljava/util/Collections$CopiesList;

    invoke-static {v0, p1}, Ljava/util/Collections$CopiesList;->$r8$lambda$EdJqK2rOrvukCYH1vYqLzS8rHHI(Ljava/util/Collections$CopiesList;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
