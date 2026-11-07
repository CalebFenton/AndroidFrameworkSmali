.class Lcom/android/internal/telephony/domainselection/DomainSelectionResolver$1;
.super Ljava/lang/Object;
.source "DomainSelectionResolver.java"

# interfaces
.implements Lcom/android/internal/telephony/domainselection/DomainSelectionResolver$DomainSelectionControllerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist create(Landroid/content/Context;)Lcom/android/internal/telephony/domainselection/DomainSelectionController;
    .registers 2

    .line 110
    new-instance p0, Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
