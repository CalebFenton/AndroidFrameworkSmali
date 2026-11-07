.class public final synthetic Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/ComponentName;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda6;->f$0:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/util/DumpUtils$$ExternalSyntheticLambda6;->f$0:Landroid/content/ComponentName;

    check-cast p1, Landroid/content/ComponentName$WithComponentName;

    invoke-static {v0, p1}, Lcom/android/internal/util/DumpUtils;->lambda$filterRecord$1(Landroid/content/ComponentName;Landroid/content/ComponentName$WithComponentName;)Z

    move-result p1

    return p1
.end method
