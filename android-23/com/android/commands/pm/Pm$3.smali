.class Lcom/android/commands/pm/Pm$3;
.super Ljava/lang/Object;
.source "Pm.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/pm/Pm;->runListInstrumentation()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/InstrumentationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/pm/Pm;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/pm/Pm;

    #@0
    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/commands/pm/Pm$3;->this$0:Lcom/android/commands/pm/Pm;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/InstrumentationInfo;Landroid/content/pm/InstrumentationInfo;)I
    .locals 2
    .param p1, "o1"    # Landroid/content/pm/InstrumentationInfo;
    .param p2, "o2"    # Landroid/content/pm/InstrumentationInfo;

    #@0
    .prologue
    .line 524
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@2
    iget-object v1, p2, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 523
    check-cast p1, Landroid/content/pm/InstrumentationInfo;

    #@2
    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/InstrumentationInfo;

    #@4
    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/commands/pm/Pm$3;->compare(Landroid/content/pm/InstrumentationInfo;Landroid/content/pm/InstrumentationInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
