.class Lcom/android/internal/telephony/domainselection/DomainSelectionController$1;
.super Ljava/lang/Object;
.source "DomainSelectionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/domainselection/DomainSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$1;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController$1;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-static {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->-$$Nest$mbind(Lcom/android/internal/telephony/domainselection/DomainSelectionController;)Z

    return-void
.end method
