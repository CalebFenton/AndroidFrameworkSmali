.class public final synthetic Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/pm/parsing/result/ParseInput$Callback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/pm/parsing/PackageParser2;

.field public final synthetic blacklist f$1:Lcom/android/internal/pm/parsing/PackageParser2$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/internal/pm/parsing/PackageParser2$Callback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/pm/parsing/PackageParser2;

    iput-object p2, p0, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    return-void
.end method


# virtual methods
.method public final blacklist isChangeEnabled(JLjava/lang/String;I)Z
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/pm/parsing/PackageParser2;

    iget-object v1, p0, Lcom/android/internal/pm/parsing/PackageParser2$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/pm/parsing/PackageParser2$Callback;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/parsing/PackageParser2;->$r8$lambda$MvArpHu3e7x9OPqqzLNY7gz1y0k(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/internal/pm/parsing/PackageParser2$Callback;JLjava/lang/String;I)Z

    move-result p1

    return p1
.end method
