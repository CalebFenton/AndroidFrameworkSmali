.class public final synthetic Ljava/lang/Enum$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/Enum;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/Enum;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/lang/Enum$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/lang/Enum$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Enum;

    check-cast p1, Ljava/lang/constant/ClassDesc;

    invoke-static {v0, p1}, Ljava/lang/Enum;->$r8$lambda$D3O6ewRntr8ajC8Twv7qQqr9DYI(Ljava/lang/Enum;Ljava/lang/constant/ClassDesc;)Ljava/lang/Enum$EnumDesc;

    move-result-object p1

    return-object p1
.end method
