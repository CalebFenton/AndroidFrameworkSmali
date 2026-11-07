.class public final synthetic Landroid/content/pm/parsing/result/ParseTypeImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/pm/parsing/result/ParseInput$Callback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/compat/IPlatformCompat;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/compat/IPlatformCompat;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/parsing/result/ParseTypeImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/compat/IPlatformCompat;

    return-void
.end method


# virtual methods
.method public final blacklist isChangeEnabled(JLjava/lang/String;I)Z
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/content/pm/parsing/result/ParseTypeImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/compat/IPlatformCompat;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/content/pm/parsing/result/ParseTypeImpl;->lambda$forDefaultParsing$1(Lcom/android/internal/compat/IPlatformCompat;JLjava/lang/String;I)Z

    move-result p1

    return p1
.end method
