.class public final synthetic Landroid/view/textclassifier/EntityConfidence$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/textclassifier/EntityConfidence;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/textclassifier/EntityConfidence;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/EntityConfidence$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/EntityConfidence;

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/textclassifier/EntityConfidence$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/EntityConfidence;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->$r8$lambda$Xoxw_1JDekRjyM8-PS2WpuSfdao(Landroid/view/textclassifier/EntityConfidence;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
