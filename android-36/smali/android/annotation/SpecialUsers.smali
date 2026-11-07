.class public interface abstract annotation Landroid/annotation/SpecialUsers;
.super Ljava/lang/Object;
.source "SpecialUsers.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/annotation/SpecialUsers$CanBeUsers;,
        Landroid/annotation/SpecialUsers$CannotBeSpecialUser;,
        Landroid/annotation/SpecialUsers$CanBeNULL;,
        Landroid/annotation/SpecialUsers$CanBeCURRENT;,
        Landroid/annotation/SpecialUsers$CanBeALL;,
        Landroid/annotation/SpecialUsers$SpecialUser;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
