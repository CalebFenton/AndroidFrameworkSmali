.class public final synthetic Ljdk/internal/util/ReferencedKeyMap$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Ljdk/internal/util/ReferencedKeyMap;


# direct methods
.method public synthetic constructor blacklist <init>(Ljdk/internal/util/ReferencedKeyMap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljdk/internal/util/ReferencedKeyMap$$ExternalSyntheticLambda3;->f$0:Ljdk/internal/util/ReferencedKeyMap;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap$$ExternalSyntheticLambda3;->f$0:Ljdk/internal/util/ReferencedKeyMap;

    invoke-static {v0, p1}, Ljdk/internal/util/ReferencedKeyMap;->$r8$lambda$RuvIHXNpYaJvQMjKylYkUyxgrtM(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
