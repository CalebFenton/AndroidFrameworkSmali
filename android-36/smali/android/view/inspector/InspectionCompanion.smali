.class public interface abstract Landroid/view/inspector/InspectionCompanion;
.super Ljava/lang/Object;
.source "InspectionCompanion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
.end method

.method public abstract whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/inspector/PropertyReader;",
            ")V"
        }
    .end annotation
.end method
