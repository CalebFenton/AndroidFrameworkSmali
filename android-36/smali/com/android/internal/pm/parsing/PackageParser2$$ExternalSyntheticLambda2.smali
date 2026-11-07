.class public final synthetic Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/pm/parsing/result/ParseInput$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;->f$0:Landroid/content/pm/parsing/result/ParseInput$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda2;->f$0:Landroid/content/pm/parsing/result/ParseInput$Callback;

    invoke-static {v0}, Lcom/android/internal/pm/parsing/PackageParser2;->lambda$new$2(Landroid/content/pm/parsing/result/ParseInput$Callback;)Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    return-object v0
.end method
