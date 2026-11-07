.class public interface abstract Ljavax/sip/header/PriorityHeader;
.super Ljava/lang/Object;
.source "PriorityHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist EMERGENCY:Ljava/lang/String; = "Emergency"

.field public static final blacklist NAME:Ljava/lang/String; = "Priority"

.field public static final blacklist NON_URGENT:Ljava/lang/String; = "Non-Urgent"

.field public static final blacklist NORMAL:Ljava/lang/String; = "Normal"

.field public static final blacklist URGENT:Ljava/lang/String; = "Urgent"


# virtual methods
.method public abstract blacklist getPriority()Ljava/lang/String;
.end method

.method public abstract blacklist setPriority(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
